.class public final Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string p1, "UiList"

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".CardViewManager onLoadFinished()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a()Landroid/support/v4/content/Loader;

    move-result-object p1

    const-string p2, "cardViewable!!.onCreateLoader()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string p1, "UiList"

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".CardViewManager onLoaderReset()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    const/4 v0, 0x0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)V

    return-void
.end method
