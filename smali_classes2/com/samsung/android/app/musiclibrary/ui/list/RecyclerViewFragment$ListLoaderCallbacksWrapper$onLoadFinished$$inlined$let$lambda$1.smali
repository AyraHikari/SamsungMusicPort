.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1249
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const-string v2, "loaderManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;Landroid/support/v4/app/LoaderManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1251
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 1254
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->b:Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;

    const/4 v3, 0x0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "UiList"

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1255
    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
