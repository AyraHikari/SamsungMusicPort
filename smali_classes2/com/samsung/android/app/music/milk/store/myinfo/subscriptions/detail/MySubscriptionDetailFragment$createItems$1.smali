.class final Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;->a(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$1;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$1;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
