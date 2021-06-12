.class Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi$1;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi$1;->a:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

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

    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi$1;->a:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;Z)Z

    return-void
.end method
