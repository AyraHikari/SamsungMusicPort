.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadBasketDeletable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;Landroid/support/v4/app/Fragment;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 300
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 303
    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 305
    :goto_0
    new-instance v2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    const/4 v5, 0x1

    .line 309
    new-array v5, v5, [Ljava/lang/Object;

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 307
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 306
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "942"

    .line 313
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01c5

    const-string v2, "9428"

    .line 317
    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;Landroid/app/Activity;[J)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0b00cd

    const-string v0, "9427"

    .line 321
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "deleteBasket"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
