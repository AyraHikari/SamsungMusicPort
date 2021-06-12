.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockReleaseRunnable"
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b()V

    return-void
.end method
