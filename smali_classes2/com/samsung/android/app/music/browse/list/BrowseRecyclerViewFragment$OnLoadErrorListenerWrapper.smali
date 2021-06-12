.class Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLoadErrorListenerWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLoadError. activity is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V

    return-void
.end method
