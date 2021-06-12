.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;->b:Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    sget-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$Companion;

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;->b:Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
