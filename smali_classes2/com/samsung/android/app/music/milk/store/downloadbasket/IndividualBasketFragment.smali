.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$Companion;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$Companion;

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
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    .line 36
    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    .line 40
    check-cast v1, Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public i()V
    .locals 8

    const/4 v0, 0x3

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->a([I)[Ljava/lang/String;

    move-result-object v1

    .line 50
    array-length v2, v1

    if-lt v2, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    aget-object v4, v1, v5

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    .line 55
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->c()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f0b046c

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "basketContext.getString(\u2026milk_download_basket_krw)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v1, v1, v6

    aput-object v1, v5, v3

    .line 55
    array-length v1, v5

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->g()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p2, p3, v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    return-void
.end method
