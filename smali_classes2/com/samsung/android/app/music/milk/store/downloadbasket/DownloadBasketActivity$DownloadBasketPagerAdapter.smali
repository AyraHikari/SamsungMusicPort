.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadBasketPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

.field private b:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;->b:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    const-string v1, "_currentFragment"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 196
    :pswitch_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 195
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 194
    :pswitch_2
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b01c9

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b01d2

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b04ec

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "DownloadBasketActivity"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageTitle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") resId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_0
    const-string p1, ""

    goto :goto_1

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 216
    check-cast p3, Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method
