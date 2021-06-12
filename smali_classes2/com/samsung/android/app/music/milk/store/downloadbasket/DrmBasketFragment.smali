.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$Companion;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$Companion;

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "DrmBasketFragment"


# instance fields
.field private e:Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$Companion;

    const-string v0, "DrmBasketFragment"

    .line 70
    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "subscriptions[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->e:Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "subscriptions[0]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;->getDueDate()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v1, 0x3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public l()Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->e:Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    if-nez v0, :cond_0

    const-string v1, "subscription"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->f()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->a(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->a(I)V

    .line 66
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    return-void
.end method
