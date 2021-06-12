.class final Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$5;
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
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$5;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$createItems$5;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    return-void
.end method
