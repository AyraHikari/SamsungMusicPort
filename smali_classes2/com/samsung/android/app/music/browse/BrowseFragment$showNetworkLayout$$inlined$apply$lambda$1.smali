.class final Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/BrowseFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    iput p2, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "mobile_data_usage_dialog"

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 285
    new-instance v1, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;-><init>()V

    .line 286
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
