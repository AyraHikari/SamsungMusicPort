.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnQueryTextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    const-string v0, ""

    .line 196
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;

    .line 205
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;

    .line 213
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
