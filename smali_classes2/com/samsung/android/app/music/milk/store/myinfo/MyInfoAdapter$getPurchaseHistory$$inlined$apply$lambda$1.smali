.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 393
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 396
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "953"

    const-string v1, "9527"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
