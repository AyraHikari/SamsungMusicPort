.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;
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
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
