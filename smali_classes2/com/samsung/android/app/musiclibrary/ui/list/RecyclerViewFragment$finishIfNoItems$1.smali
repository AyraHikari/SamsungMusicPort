.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/database/Cursor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field final synthetic b:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;->b:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 1487
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 1490
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1$$special$$inlined$doOnResume$1;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1$$special$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method
