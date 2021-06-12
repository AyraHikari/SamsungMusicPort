.class Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi$1;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi$1;->a:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi$1;->a:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a(Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;Z)Z

    return-void
.end method
