.class final Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "Ui"

    const-string p2, "MySubscriptionDetail_MySubscriptionDetailActivity | onClick() - cancel subscription."

    .line 77
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$Companion;

    .line 79
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->b:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->b(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/SubscriptionInfoGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/SubscriptionInfoGetter;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "02"

    .line 78
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$onActivityResult$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "subscription_cancel_click"

    const-string v0, "click"

    const-string v1, "click"

    .line 85
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
