.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
