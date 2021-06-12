.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnbindServiceHelper"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 994
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 1005
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    const-string p1, "SamsungBilling"

    const-string v0, "billing host activity is destroyed. release billing service."

    .line 1006
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 999
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    .line 1000
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    return-void
.end method
