.class public final Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
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
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

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

    const-string v0, "CardViewController onLoadFinished()"

    .line 34
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;Landroid/database/Cursor;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->c(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;I)V

    const/4 p1, 0x0

    .line 37
    check-cast p1, Ljava/lang/Void;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
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

    .line 28
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 29
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "recyclerViewFragment.activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "recyclerViewFragment.activity!!.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    .line 28
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".CardViewManager onLoaderReset()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;

    const/4 v0, 0x0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;Landroid/database/Cursor;)V

    return-void
.end method
