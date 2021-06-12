.class public final Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;->b:Landroid/app/Activity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 23
    invoke-interface {v1, p1}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 28
    invoke-interface {v1, p1}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
