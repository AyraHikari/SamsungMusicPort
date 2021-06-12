.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a()V

    return-void
.end method
