.class Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3

    const-string v0, "UiList"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onItemClick() | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " | view: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiList"

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " orderId : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
