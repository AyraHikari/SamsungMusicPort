.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressUpdateHandler"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 1

    .line 919
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 920
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 925
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 928
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 932
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
