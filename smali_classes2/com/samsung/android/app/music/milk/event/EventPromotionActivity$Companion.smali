.class public final Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "web_url"

    .line 108
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "check_login"

    .line 109
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
