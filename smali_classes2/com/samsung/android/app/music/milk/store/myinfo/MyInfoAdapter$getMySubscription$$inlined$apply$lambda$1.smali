.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(IZLjava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;Ljava/util/List;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;->c:Z

    iput p4, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 359
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    sget-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;->a(Landroid/app/Activity;)V

    .line 362
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "953"

    const-string v1, "9524"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
