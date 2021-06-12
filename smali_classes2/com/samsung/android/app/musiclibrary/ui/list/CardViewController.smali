.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;


# instance fields
.field private final a:I

.field private b:Landroid/database/Cursor;

.field private c:I

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "recyclerViewFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->f:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->f:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->c:I

    .line 26
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->f:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController$loaderCallbacks$1;

    check-cast v1, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->f:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->c:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;Landroid/database/Cursor;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b:Landroid/database/Cursor;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->c:I

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->d:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->b:Landroid/database/Cursor;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->a(Landroid/database/Cursor;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 60
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    goto :goto_0

    .line 63
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->c:I

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;->d:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    :goto_0
    return-void
.end method

.method public abstract a(Landroid/database/Cursor;)Z
.end method
