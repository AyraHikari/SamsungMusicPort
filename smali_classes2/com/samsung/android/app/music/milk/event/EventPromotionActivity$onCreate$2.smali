.class final Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->finish()V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0386

    const/4 v1, 0x0

    .line 46
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
