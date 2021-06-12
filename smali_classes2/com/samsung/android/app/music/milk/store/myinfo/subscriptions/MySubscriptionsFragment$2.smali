.class Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
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

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    return-void
.end method
